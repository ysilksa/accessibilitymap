import { useEffect, useState } from "react";
import type { Location } from "./types/locations";

const App = () => {
  const [locations, setLocations] = useState<Location[]>([]);
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState<boolean>(true);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch(`${import.meta.env.VITE_BACKEND_URL}/api/v1/locations`); 
        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }
        const result = await response.json();
        setLocations(result);
      } catch (err) {
        setError(err instanceof Error ? err.message : "An unknown error occurred.");
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, [])

  if (loading) {
    return <p>Loading...</p>;
  }

  return (
    <div className="w-screen h-screen flex flex-col justify-center items-center">
      <h1 className="text-xl">Hello World</h1>
      <div>
        {
          locations.map((location) => (
            <p key={location.id}>{location.name}</p>
          ))
        }
      </div>
      {error && <p>{error}</p>}
    </div>
  );
};

export default App;
